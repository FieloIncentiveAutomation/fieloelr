trigger ModuleResponses on FieloELR__ModuleResponse__c (before insert, after insert, before update, after update, before delete, after delete) {
	SObjectDomain.triggerHandler(ModuleResponses.class);
}