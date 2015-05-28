
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _ClientVOEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("client_id", "wits_id", "client_status", "intakeDate", "appointmentDate", "attention", "events", "notes", "flagged", "bhs", "facility");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("client_id", "wits_id", "client_status", "intakeDate", "appointmentDate", "attention", "events", "notes", "flagged", "bhs", "facility");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("client_id", "wits_id", "client_status", "intakeDate", "appointmentDate", "attention", "events", "notes", "flagged", "bhs", "facility");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("client_id", "wits_id", "client_status", "intakeDate", "appointmentDate", "attention", "events", "notes", "flagged", "bhs", "facility");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("client_id", "wits_id", "client_status", "intakeDate", "appointmentDate", "attention", "events", "notes", "flagged", "bhs", "facility");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("events");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ClientVO";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _wits_idIsValid:Boolean;
    model_internal var _wits_idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _wits_idIsValidCacheInitialized:Boolean = false;
    model_internal var _wits_idValidationFailureMessages:Array;
    
    model_internal var _client_statusIsValid:Boolean;
    model_internal var _client_statusValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _client_statusIsValidCacheInitialized:Boolean = false;
    model_internal var _client_statusValidationFailureMessages:Array;
    
    model_internal var _intakeDateIsValid:Boolean;
    model_internal var _intakeDateValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _intakeDateIsValidCacheInitialized:Boolean = false;
    model_internal var _intakeDateValidationFailureMessages:Array;
    
    model_internal var _appointmentDateIsValid:Boolean;
    model_internal var _appointmentDateValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _appointmentDateIsValidCacheInitialized:Boolean = false;
    model_internal var _appointmentDateValidationFailureMessages:Array;
    
    model_internal var _eventsIsValid:Boolean;
    model_internal var _eventsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _eventsIsValidCacheInitialized:Boolean = false;
    model_internal var _eventsValidationFailureMessages:Array;
    
    model_internal var _notesIsValid:Boolean;
    model_internal var _notesValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _notesIsValidCacheInitialized:Boolean = false;
    model_internal var _notesValidationFailureMessages:Array;
    
    model_internal var _bhsIsValid:Boolean;
    model_internal var _bhsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _bhsIsValidCacheInitialized:Boolean = false;
    model_internal var _bhsValidationFailureMessages:Array;
    
    model_internal var _facilityIsValid:Boolean;
    model_internal var _facilityValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _facilityIsValidCacheInitialized:Boolean = false;
    model_internal var _facilityValidationFailureMessages:Array;

    model_internal var _instance:_Super_ClientVO;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ClientVOEntityMetadata(value : _Super_ClientVO)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["client_id"] = new Array();
            model_internal::dependentsOnMap["wits_id"] = new Array();
            model_internal::dependentsOnMap["client_status"] = new Array();
            model_internal::dependentsOnMap["intakeDate"] = new Array();
            model_internal::dependentsOnMap["appointmentDate"] = new Array();
            model_internal::dependentsOnMap["attention"] = new Array();
            model_internal::dependentsOnMap["events"] = new Array();
            model_internal::dependentsOnMap["notes"] = new Array();
            model_internal::dependentsOnMap["flagged"] = new Array();
            model_internal::dependentsOnMap["bhs"] = new Array();
            model_internal::dependentsOnMap["facility"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["events"] = "Object";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["client_id"] = "int";
        model_internal::propertyTypeMap["wits_id"] = "String";
        model_internal::propertyTypeMap["client_status"] = "String";
        model_internal::propertyTypeMap["intakeDate"] = "String";
        model_internal::propertyTypeMap["appointmentDate"] = "String";
        model_internal::propertyTypeMap["attention"] = "Boolean";
        model_internal::propertyTypeMap["events"] = "ArrayCollection";
        model_internal::propertyTypeMap["notes"] = "String";
        model_internal::propertyTypeMap["flagged"] = "Boolean";
        model_internal::propertyTypeMap["bhs"] = "String";
        model_internal::propertyTypeMap["facility"] = "String";

        model_internal::_instance = value;
        model_internal::_wits_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForWits_id);
        model_internal::_wits_idValidator.required = true;
        model_internal::_wits_idValidator.requiredFieldError = "wits_id is required";
        //model_internal::_wits_idValidator.source = model_internal::_instance;
        //model_internal::_wits_idValidator.property = "wits_id";
        model_internal::_client_statusValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForClient_status);
        model_internal::_client_statusValidator.required = true;
        model_internal::_client_statusValidator.requiredFieldError = "client_status is required";
        //model_internal::_client_statusValidator.source = model_internal::_instance;
        //model_internal::_client_statusValidator.property = "client_status";
        model_internal::_intakeDateValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIntakeDate);
        model_internal::_intakeDateValidator.required = true;
        model_internal::_intakeDateValidator.requiredFieldError = "intakeDate is required";
        //model_internal::_intakeDateValidator.source = model_internal::_instance;
        //model_internal::_intakeDateValidator.property = "intakeDate";
        model_internal::_appointmentDateValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAppointmentDate);
        model_internal::_appointmentDateValidator.required = true;
        model_internal::_appointmentDateValidator.requiredFieldError = "appointmentDate is required";
        //model_internal::_appointmentDateValidator.source = model_internal::_instance;
        //model_internal::_appointmentDateValidator.property = "appointmentDate";
        model_internal::_eventsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEvents);
        model_internal::_eventsValidator.required = true;
        model_internal::_eventsValidator.requiredFieldError = "events is required";
        //model_internal::_eventsValidator.source = model_internal::_instance;
        //model_internal::_eventsValidator.property = "events";
        model_internal::_notesValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNotes);
        model_internal::_notesValidator.required = true;
        model_internal::_notesValidator.requiredFieldError = "notes is required";
        //model_internal::_notesValidator.source = model_internal::_instance;
        //model_internal::_notesValidator.property = "notes";
        model_internal::_bhsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBhs);
        model_internal::_bhsValidator.required = true;
        model_internal::_bhsValidator.requiredFieldError = "bhs is required";
        //model_internal::_bhsValidator.source = model_internal::_instance;
        //model_internal::_bhsValidator.property = "bhs";
        model_internal::_facilityValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFacility);
        model_internal::_facilityValidator.required = true;
        model_internal::_facilityValidator.requiredFieldError = "facility is required";
        //model_internal::_facilityValidator.source = model_internal::_instance;
        //model_internal::_facilityValidator.property = "facility";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity ClientVO");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity ClientVO");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of ClientVO");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity ClientVO");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity ClientVO");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity ClientVO");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isClient_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isWits_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isClient_statusAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIntakeDateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAppointmentDateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAttentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEventsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNotesAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFlaggedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBhsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFacilityAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnWits_id():void
    {
        if (model_internal::_wits_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfWits_id = null;
            model_internal::calculateWits_idIsValid();
        }
    }
    public function invalidateDependentOnClient_status():void
    {
        if (model_internal::_client_statusIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfClient_status = null;
            model_internal::calculateClient_statusIsValid();
        }
    }
    public function invalidateDependentOnIntakeDate():void
    {
        if (model_internal::_intakeDateIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIntakeDate = null;
            model_internal::calculateIntakeDateIsValid();
        }
    }
    public function invalidateDependentOnAppointmentDate():void
    {
        if (model_internal::_appointmentDateIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAppointmentDate = null;
            model_internal::calculateAppointmentDateIsValid();
        }
    }
    public function invalidateDependentOnEvents():void
    {
        if (model_internal::_eventsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEvents = null;
            model_internal::calculateEventsIsValid();
        }
    }
    public function invalidateDependentOnNotes():void
    {
        if (model_internal::_notesIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNotes = null;
            model_internal::calculateNotesIsValid();
        }
    }
    public function invalidateDependentOnBhs():void
    {
        if (model_internal::_bhsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfBhs = null;
            model_internal::calculateBhsIsValid();
        }
    }
    public function invalidateDependentOnFacility():void
    {
        if (model_internal::_facilityIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFacility = null;
            model_internal::calculateFacilityIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get client_idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get wits_idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get wits_idValidator() : StyleValidator
    {
        return model_internal::_wits_idValidator;
    }

    model_internal function set _wits_idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_wits_idIsValid;         
        if (oldValue !== value)
        {
            model_internal::_wits_idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "wits_idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get wits_idIsValid():Boolean
    {
        if (!model_internal::_wits_idIsValidCacheInitialized)
        {
            model_internal::calculateWits_idIsValid();
        }

        return model_internal::_wits_idIsValid;
    }

    model_internal function calculateWits_idIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_wits_idValidator.validate(model_internal::_instance.wits_id)
        model_internal::_wits_idIsValid_der = (valRes.results == null);
        model_internal::_wits_idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::wits_idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::wits_idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get wits_idValidationFailureMessages():Array
    {
        if (model_internal::_wits_idValidationFailureMessages == null)
            model_internal::calculateWits_idIsValid();

        return _wits_idValidationFailureMessages;
    }

    model_internal function set wits_idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_wits_idValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_wits_idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "wits_idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get client_statusStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get client_statusValidator() : StyleValidator
    {
        return model_internal::_client_statusValidator;
    }

    model_internal function set _client_statusIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_client_statusIsValid;         
        if (oldValue !== value)
        {
            model_internal::_client_statusIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "client_statusIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get client_statusIsValid():Boolean
    {
        if (!model_internal::_client_statusIsValidCacheInitialized)
        {
            model_internal::calculateClient_statusIsValid();
        }

        return model_internal::_client_statusIsValid;
    }

    model_internal function calculateClient_statusIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_client_statusValidator.validate(model_internal::_instance.client_status)
        model_internal::_client_statusIsValid_der = (valRes.results == null);
        model_internal::_client_statusIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::client_statusValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::client_statusValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get client_statusValidationFailureMessages():Array
    {
        if (model_internal::_client_statusValidationFailureMessages == null)
            model_internal::calculateClient_statusIsValid();

        return _client_statusValidationFailureMessages;
    }

    model_internal function set client_statusValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_client_statusValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_client_statusValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "client_statusValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get intakeDateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get intakeDateValidator() : StyleValidator
    {
        return model_internal::_intakeDateValidator;
    }

    model_internal function set _intakeDateIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_intakeDateIsValid;         
        if (oldValue !== value)
        {
            model_internal::_intakeDateIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "intakeDateIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get intakeDateIsValid():Boolean
    {
        if (!model_internal::_intakeDateIsValidCacheInitialized)
        {
            model_internal::calculateIntakeDateIsValid();
        }

        return model_internal::_intakeDateIsValid;
    }

    model_internal function calculateIntakeDateIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_intakeDateValidator.validate(model_internal::_instance.intakeDate)
        model_internal::_intakeDateIsValid_der = (valRes.results == null);
        model_internal::_intakeDateIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::intakeDateValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::intakeDateValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get intakeDateValidationFailureMessages():Array
    {
        if (model_internal::_intakeDateValidationFailureMessages == null)
            model_internal::calculateIntakeDateIsValid();

        return _intakeDateValidationFailureMessages;
    }

    model_internal function set intakeDateValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_intakeDateValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_intakeDateValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "intakeDateValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get appointmentDateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get appointmentDateValidator() : StyleValidator
    {
        return model_internal::_appointmentDateValidator;
    }

    model_internal function set _appointmentDateIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_appointmentDateIsValid;         
        if (oldValue !== value)
        {
            model_internal::_appointmentDateIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "appointmentDateIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get appointmentDateIsValid():Boolean
    {
        if (!model_internal::_appointmentDateIsValidCacheInitialized)
        {
            model_internal::calculateAppointmentDateIsValid();
        }

        return model_internal::_appointmentDateIsValid;
    }

    model_internal function calculateAppointmentDateIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_appointmentDateValidator.validate(model_internal::_instance.appointmentDate)
        model_internal::_appointmentDateIsValid_der = (valRes.results == null);
        model_internal::_appointmentDateIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::appointmentDateValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::appointmentDateValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get appointmentDateValidationFailureMessages():Array
    {
        if (model_internal::_appointmentDateValidationFailureMessages == null)
            model_internal::calculateAppointmentDateIsValid();

        return _appointmentDateValidationFailureMessages;
    }

    model_internal function set appointmentDateValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_appointmentDateValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_appointmentDateValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "appointmentDateValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get attentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get eventsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get eventsValidator() : StyleValidator
    {
        return model_internal::_eventsValidator;
    }

    model_internal function set _eventsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_eventsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_eventsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "eventsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get eventsIsValid():Boolean
    {
        if (!model_internal::_eventsIsValidCacheInitialized)
        {
            model_internal::calculateEventsIsValid();
        }

        return model_internal::_eventsIsValid;
    }

    model_internal function calculateEventsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_eventsValidator.validate(model_internal::_instance.events)
        model_internal::_eventsIsValid_der = (valRes.results == null);
        model_internal::_eventsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::eventsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::eventsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get eventsValidationFailureMessages():Array
    {
        if (model_internal::_eventsValidationFailureMessages == null)
            model_internal::calculateEventsIsValid();

        return _eventsValidationFailureMessages;
    }

    model_internal function set eventsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_eventsValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_eventsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "eventsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get notesStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get notesValidator() : StyleValidator
    {
        return model_internal::_notesValidator;
    }

    model_internal function set _notesIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_notesIsValid;         
        if (oldValue !== value)
        {
            model_internal::_notesIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "notesIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get notesIsValid():Boolean
    {
        if (!model_internal::_notesIsValidCacheInitialized)
        {
            model_internal::calculateNotesIsValid();
        }

        return model_internal::_notesIsValid;
    }

    model_internal function calculateNotesIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_notesValidator.validate(model_internal::_instance.notes)
        model_internal::_notesIsValid_der = (valRes.results == null);
        model_internal::_notesIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::notesValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::notesValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get notesValidationFailureMessages():Array
    {
        if (model_internal::_notesValidationFailureMessages == null)
            model_internal::calculateNotesIsValid();

        return _notesValidationFailureMessages;
    }

    model_internal function set notesValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_notesValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_notesValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "notesValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get flaggedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get bhsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get bhsValidator() : StyleValidator
    {
        return model_internal::_bhsValidator;
    }

    model_internal function set _bhsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_bhsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_bhsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bhsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get bhsIsValid():Boolean
    {
        if (!model_internal::_bhsIsValidCacheInitialized)
        {
            model_internal::calculateBhsIsValid();
        }

        return model_internal::_bhsIsValid;
    }

    model_internal function calculateBhsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_bhsValidator.validate(model_internal::_instance.bhs)
        model_internal::_bhsIsValid_der = (valRes.results == null);
        model_internal::_bhsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::bhsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::bhsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get bhsValidationFailureMessages():Array
    {
        if (model_internal::_bhsValidationFailureMessages == null)
            model_internal::calculateBhsIsValid();

        return _bhsValidationFailureMessages;
    }

    model_internal function set bhsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_bhsValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_bhsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bhsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get facilityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get facilityValidator() : StyleValidator
    {
        return model_internal::_facilityValidator;
    }

    model_internal function set _facilityIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_facilityIsValid;         
        if (oldValue !== value)
        {
            model_internal::_facilityIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "facilityIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get facilityIsValid():Boolean
    {
        if (!model_internal::_facilityIsValidCacheInitialized)
        {
            model_internal::calculateFacilityIsValid();
        }

        return model_internal::_facilityIsValid;
    }

    model_internal function calculateFacilityIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_facilityValidator.validate(model_internal::_instance.facility)
        model_internal::_facilityIsValid_der = (valRes.results == null);
        model_internal::_facilityIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::facilityValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::facilityValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get facilityValidationFailureMessages():Array
    {
        if (model_internal::_facilityValidationFailureMessages == null)
            model_internal::calculateFacilityIsValid();

        return _facilityValidationFailureMessages;
    }

    model_internal function set facilityValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_facilityValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_facilityValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "facilityValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("wits_id"):
            {
                return wits_idValidationFailureMessages;
            }
            case("client_status"):
            {
                return client_statusValidationFailureMessages;
            }
            case("intakeDate"):
            {
                return intakeDateValidationFailureMessages;
            }
            case("appointmentDate"):
            {
                return appointmentDateValidationFailureMessages;
            }
            case("events"):
            {
                return eventsValidationFailureMessages;
            }
            case("notes"):
            {
                return notesValidationFailureMessages;
            }
            case("bhs"):
            {
                return bhsValidationFailureMessages;
            }
            case("facility"):
            {
                return facilityValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
