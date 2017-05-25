public with sharing class ModuleDependenciesSelector extends SObjectSelector {

    public List<Schema.SObjectField> getSObjectFieldList(){
        return new List<Schema.SObjectField> {
                ModuleDependency__c.Id,
                ModuleDependency__c.Name,
                ModuleDependency__c.Module__c,
                ModuleDependency__c.Predecessor__c,
                ModuleDependency__c.Key__c
            };
    }

    public ModuleDependenciesSelector(Set<String> fields){
        super(fields);
    }

    public ModuleDependenciesSelector(){
        super();
    }

    public Schema.SObjectType getSObjectType(){
        return ModuleDependency__c.sObjectType;
    }

    public List<ModuleDependency__c> selectById(Set<Id> moduleDependencyIds){
        return (List<ModuleDependency__c>) selectSObjectsById(moduleDependencyIds);
    }

     public List<ModuleDependency__c> selectByIdWithExceptions(Set<Id> moduleDependencyIds, Set<Id> moduleDependencyExecptionIds) {
      return (List<ModuleDependency__c>) Database.query(String.format(
                'SELECT {0} ' +
                  'FROM {1} ' +
                  'WHERE (Module__c IN :moduleDependencyIds OR Predecessor__c IN :moduleDependencyIds) ' +
                  '  AND (Module__c NOT IN :moduleDependencyExecptionIds AND Predecessor__c NOT IN :moduleDependencyExecptionIds) ' +
                  'ORDER BY {2}',
                new List<String> {
                    getFieldListString(),
                    getSObjectName(),
                    getOrderBy() } ));
    }
}