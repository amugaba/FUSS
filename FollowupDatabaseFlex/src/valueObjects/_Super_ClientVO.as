/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ClientVO.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_ClientVO extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("ClientVO") == null)
            {
                flash.net.registerClassAlias("ClientVO", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("ClientVO", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _ClientVOEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_client_id : int;
    private var _internal_wits_id : String;
    private var _internal_client_status : String;
    private var _internal_intakeDate : String;
    private var _internal_appointmentDate : String;
    private var _internal_attention : Boolean;
    private var _internal_events : ArrayCollection;
    private var _internal_notes : String;
    private var _internal_flagged : Boolean;
    private var _internal_bhs : String;
    private var _internal_facility : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ClientVO()
    {
        _model = new _ClientVOEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "wits_id", model_internal::setterListenerWits_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "client_status", model_internal::setterListenerClient_status));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "intakeDate", model_internal::setterListenerIntakeDate));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "appointmentDate", model_internal::setterListenerAppointmentDate));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "events", model_internal::setterListenerEvents));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "notes", model_internal::setterListenerNotes));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "bhs", model_internal::setterListenerBhs));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "facility", model_internal::setterListenerFacility));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get client_id() : int
    {
        return _internal_client_id;
    }

    [Bindable(event="propertyChange")]
    public function get wits_id() : String
    {
        return _internal_wits_id;
    }

    [Bindable(event="propertyChange")]
    public function get client_status() : String
    {
        return _internal_client_status;
    }

    [Bindable(event="propertyChange")]
    public function get intakeDate() : String
    {
        return _internal_intakeDate;
    }

    [Bindable(event="propertyChange")]
    public function get appointmentDate() : String
    {
        return _internal_appointmentDate;
    }

    [Bindable(event="propertyChange")]
    public function get attention() : Boolean
    {
        return _internal_attention;
    }

    [Bindable(event="propertyChange")]
    public function get events() : ArrayCollection
    {
        return _internal_events;
    }

    [Bindable(event="propertyChange")]
    public function get notes() : String
    {
        return _internal_notes;
    }

    [Bindable(event="propertyChange")]
    public function get flagged() : Boolean
    {
        return _internal_flagged;
    }

    [Bindable(event="propertyChange")]
    public function get bhs() : String
    {
        return _internal_bhs;
    }

    [Bindable(event="propertyChange")]
    public function get facility() : String
    {
        return _internal_facility;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set client_id(value:int) : void
    {
        var oldValue:int = _internal_client_id;
        if (oldValue !== value)
        {
            _internal_client_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "client_id", oldValue, _internal_client_id));
        }
    }

    public function set wits_id(value:String) : void
    {
        var oldValue:String = _internal_wits_id;
        if (oldValue !== value)
        {
            _internal_wits_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "wits_id", oldValue, _internal_wits_id));
        }
    }

    public function set client_status(value:String) : void
    {
        var oldValue:String = _internal_client_status;
        if (oldValue !== value)
        {
            _internal_client_status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "client_status", oldValue, _internal_client_status));
        }
    }

    public function set intakeDate(value:String) : void
    {
        var oldValue:String = _internal_intakeDate;
        if (oldValue !== value)
        {
            _internal_intakeDate = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "intakeDate", oldValue, _internal_intakeDate));
        }
    }

    public function set appointmentDate(value:String) : void
    {
        var oldValue:String = _internal_appointmentDate;
        if (oldValue !== value)
        {
            _internal_appointmentDate = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "appointmentDate", oldValue, _internal_appointmentDate));
        }
    }

    public function set attention(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_attention;
        if (oldValue !== value)
        {
            _internal_attention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "attention", oldValue, _internal_attention));
        }
    }

    public function set events(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_events;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_events = value;
            }
            else if (value is Array)
            {
                _internal_events = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_events = null;
            }
            else
            {
                throw new Error("value of events must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "events", oldValue, _internal_events));
        }
    }

    public function set notes(value:String) : void
    {
        var oldValue:String = _internal_notes;
        if (oldValue !== value)
        {
            _internal_notes = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "notes", oldValue, _internal_notes));
        }
    }

    public function set flagged(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_flagged;
        if (oldValue !== value)
        {
            _internal_flagged = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "flagged", oldValue, _internal_flagged));
        }
    }

    public function set bhs(value:String) : void
    {
        var oldValue:String = _internal_bhs;
        if (oldValue !== value)
        {
            _internal_bhs = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bhs", oldValue, _internal_bhs));
        }
    }

    public function set facility(value:String) : void
    {
        var oldValue:String = _internal_facility;
        if (oldValue !== value)
        {
            _internal_facility = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "facility", oldValue, _internal_facility));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerWits_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOnWits_id();
    }

    model_internal function setterListenerClient_status(value:flash.events.Event):void
    {
        _model.invalidateDependentOnClient_status();
    }

    model_internal function setterListenerIntakeDate(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIntakeDate();
    }

    model_internal function setterListenerAppointmentDate(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAppointmentDate();
    }

    model_internal function setterListenerEvents(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerEvents);
            }
        }
        _model.invalidateDependentOnEvents();
    }

    model_internal function setterListenerNotes(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNotes();
    }

    model_internal function setterListenerBhs(value:flash.events.Event):void
    {
        _model.invalidateDependentOnBhs();
    }

    model_internal function setterListenerFacility(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFacility();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.wits_idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_wits_idValidationFailureMessages);
        }
        if (!_model.client_statusIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_client_statusValidationFailureMessages);
        }
        if (!_model.intakeDateIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_intakeDateValidationFailureMessages);
        }
        if (!_model.appointmentDateIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_appointmentDateValidationFailureMessages);
        }
        if (!_model.eventsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_eventsValidationFailureMessages);
        }
        if (!_model.notesIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_notesValidationFailureMessages);
        }
        if (!_model.bhsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_bhsValidationFailureMessages);
        }
        if (!_model.facilityIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_facilityValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _ClientVOEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ClientVOEntityMetadata) : void
    {
        var oldValue : _ClientVOEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfWits_id : Array = null;
    model_internal var _doValidationLastValOfWits_id : String;

    model_internal function _doValidationForWits_id(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfWits_id != null && model_internal::_doValidationLastValOfWits_id == value)
           return model_internal::_doValidationCacheOfWits_id ;

        _model.model_internal::_wits_idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isWits_idAvailable && _internal_wits_id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "wits_id is required"));
        }

        model_internal::_doValidationCacheOfWits_id = validationFailures;
        model_internal::_doValidationLastValOfWits_id = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfClient_status : Array = null;
    model_internal var _doValidationLastValOfClient_status : String;

    model_internal function _doValidationForClient_status(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfClient_status != null && model_internal::_doValidationLastValOfClient_status == value)
           return model_internal::_doValidationCacheOfClient_status ;

        _model.model_internal::_client_statusIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isClient_statusAvailable && _internal_client_status == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "client_status is required"));
        }

        model_internal::_doValidationCacheOfClient_status = validationFailures;
        model_internal::_doValidationLastValOfClient_status = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIntakeDate : Array = null;
    model_internal var _doValidationLastValOfIntakeDate : String;

    model_internal function _doValidationForIntakeDate(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIntakeDate != null && model_internal::_doValidationLastValOfIntakeDate == value)
           return model_internal::_doValidationCacheOfIntakeDate ;

        _model.model_internal::_intakeDateIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIntakeDateAvailable && _internal_intakeDate == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "intakeDate is required"));
        }

        model_internal::_doValidationCacheOfIntakeDate = validationFailures;
        model_internal::_doValidationLastValOfIntakeDate = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAppointmentDate : Array = null;
    model_internal var _doValidationLastValOfAppointmentDate : String;

    model_internal function _doValidationForAppointmentDate(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAppointmentDate != null && model_internal::_doValidationLastValOfAppointmentDate == value)
           return model_internal::_doValidationCacheOfAppointmentDate ;

        _model.model_internal::_appointmentDateIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAppointmentDateAvailable && _internal_appointmentDate == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "appointmentDate is required"));
        }

        model_internal::_doValidationCacheOfAppointmentDate = validationFailures;
        model_internal::_doValidationLastValOfAppointmentDate = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEvents : Array = null;
    model_internal var _doValidationLastValOfEvents : ArrayCollection;

    model_internal function _doValidationForEvents(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfEvents != null && model_internal::_doValidationLastValOfEvents == value)
           return model_internal::_doValidationCacheOfEvents ;

        _model.model_internal::_eventsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEventsAvailable && _internal_events == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "events is required"));
        }

        model_internal::_doValidationCacheOfEvents = validationFailures;
        model_internal::_doValidationLastValOfEvents = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNotes : Array = null;
    model_internal var _doValidationLastValOfNotes : String;

    model_internal function _doValidationForNotes(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNotes != null && model_internal::_doValidationLastValOfNotes == value)
           return model_internal::_doValidationCacheOfNotes ;

        _model.model_internal::_notesIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNotesAvailable && _internal_notes == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "notes is required"));
        }

        model_internal::_doValidationCacheOfNotes = validationFailures;
        model_internal::_doValidationLastValOfNotes = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfBhs : Array = null;
    model_internal var _doValidationLastValOfBhs : String;

    model_internal function _doValidationForBhs(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfBhs != null && model_internal::_doValidationLastValOfBhs == value)
           return model_internal::_doValidationCacheOfBhs ;

        _model.model_internal::_bhsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isBhsAvailable && _internal_bhs == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "bhs is required"));
        }

        model_internal::_doValidationCacheOfBhs = validationFailures;
        model_internal::_doValidationLastValOfBhs = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFacility : Array = null;
    model_internal var _doValidationLastValOfFacility : String;

    model_internal function _doValidationForFacility(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfFacility != null && model_internal::_doValidationLastValOfFacility == value)
           return model_internal::_doValidationCacheOfFacility ;

        _model.model_internal::_facilityIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFacilityAvailable && _internal_facility == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "facility is required"));
        }

        model_internal::_doValidationCacheOfFacility = validationFailures;
        model_internal::_doValidationLastValOfFacility = value;

        return validationFailures;
    }
    

}

}
