public without sharing class TriggerDispatcher {
    public static void run(sObject objName, TriggerInterface triggerInterface) {

        if (Trigger.isBefore && Trigger.isInsert) {

            triggerInterface.beforeInsert(Trigger.new);
        } else if (Trigger.isAfter && Trigger.isInsert) {

            triggerInterface.afterInsert(Trigger.newMap);
        } else if (Trigger.isBefore && Trigger.isUpdate) {

            triggerInterface.beforeUpdate(Trigger.oldMap,Trigger.newMap);
        } else if(Trigger.isAfter && Trigger.isUpdate) {

            triggerInterface.afterUpdate(Trigger.oldMap,Trigger.newMap);
        } else if(Trigger.isBefore && Trigger.isDelete) {

            triggerInterface.afterDelete(Trigger.oldMap);
        } else if(Trigger.isAfter && Trigger.isDelete) {

            triggerInterface.afterDelete(Trigger.oldMap);
        } else if(Trigger.isAfter && Trigger.isUndelete) {

            triggerInterface.afterUndelete(Trigger.newMap);
        }
    }
}