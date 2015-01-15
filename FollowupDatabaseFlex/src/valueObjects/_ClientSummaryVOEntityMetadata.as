
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
internal class _ClientSummaryVOEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("client_id", "wits_id", "client_status", "attention", "events", "notes", "flagged", "bhs", "facility", "intakeDate", "appointmentDate");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("intakeDate", "appointmentDate");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("client_id", "wits_id", "client_status", "attention", "events", "notes", "flagged", "bhs", "facility", "intakeDate", "appointmentDate");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("client_id", "wits_id", "client_status", "attention", "events", "notes", "flagged", "bhs", "facility", "intakeDate", "appointmentDate");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("client_id", "wits_id", "client_status", "attention", "events", "notes", "flagged", "bhs", "facility", "intakeDate", "appointmentDate");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("events");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ClientSummaryVO";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _intakeDateIsValid:Boolean;
    model_internal var _intakeDateValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _intakeDateIsValidCacheInitialized:Boolean = false;
    model_internal var _intakeDateValidationFailureMessages:Array;
    
    model_internal var _appointmentDateIsValid:Boolean;
    model_internal var _appointmentDateValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _appointmentDateIsValidCacheInitialized:Boolean = false;
    model_internal var _appointmentDateValidationFailureMessages:Array;

    model_internal var _instance:_Super_ClientSummaryVO;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ClientSummaryVOEntityMetadata(value : _Super_ClientSummaryVO)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["client_id"] = new Array();
            model_internal::dependentsOnMap["wits_id"] = new Array();
            model_internal::dependentsOnMap["client_status"] = new Array();
            model_internal::dependentsOnMap["attention"] = new Array();
            model_internal::dependentsOnMap["events"] = new Array();
            model_internal::dependentsOnMap["notes"] = new Array();
            model_internal::dependentsOnMap["flagged"] = new Array();
            model_internal::dependentsOnMap["bhs"] = new Array();
            model_internal::dependentsOnMap["facility"] = new Array();
            model_internal::dependentsOnMap["intakeDate"] = new Array();
            model_internal::dependentsOnMap["appointmentDate"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["events"] = "Object";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["client_id"] = "int";
        model_internal::propertyTypeMap["wits_id"] = "String";
        model_internal::propertyTypeMap["client_status"] = "String";
        model_internal::propertyTypeMap["attention"] = "Boolean";
        model_internal::propertyTypeMap["events"] = "ArrayCollection";
        model_internal::propertyTypeMap["notes"] = "String";
        model_internal::propertyTypeMap["flagged"] = "Boolean";
        model_internal::propertyTypeMap["bhs"] = "String";
        model_internal::propertyTypeMap["facility"] = "String";
        model_internal::propertyTypeMap["intakeDate"] = "String";
        model_internal::propertyTypeMap["appointmentDate"] = "String";

        model_internal::_instance = value;
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
            throw new Error(propertyName + " is not a data property of entity ClientSummaryVO");
            
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
            throw new Error(propertyName + " is not a collection property of entity ClientSummaryVO");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of ClientSummaryVO");

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
            throw new Error(propertyName + " does not exist for entity ClientSummaryVO");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity ClientSummaryVO");
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
            throw new Error(propertyName + " does not exist for entity ClientSummaryVO");
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


    /**
     * derived property recalculation
     */
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

    [Bindable(event="propertyChange")]   
    public function get client_statusStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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

    [Bindable(event="propertyChange")]   
    public function get notesStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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

    [Bindable(event="propertyChange")]   
    public function get facilityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
            case("intakeDate"):
            {
                return intakeDateValidationFailureMessages;
            }
            case("appointmentDate"):
            {
                return appointmentDateValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
