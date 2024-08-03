public interface TriggerInterface {
    void beforeInsert(List<sObject> newObj);
    void afterInsert(Map<Id, sObject> newObj);
    void beforeUpdate(Map<Id, sObject> oldObj, Map<Id, sObject> newObj);
    void afterUpdate(Map<Id, sObject> oldObj, Map<Id, sObject> newObj);
    void beforeDelete(Map<Id, sObject> oldObj);
    void afterDelete(Map<Id, sObject> oldObj);
    void afterUndelete(Map<Id, sObject> newObj);
}