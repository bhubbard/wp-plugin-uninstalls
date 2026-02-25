-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pi_dtt_allow_shop_manager', 'pi_type', 'pi_dtt_remove_billing_when_pickup-pro', 'pi_dtt_remove_billing_when_delivery-pro', 'pisol_dtt_pickup_dd', 'pisol_dtt_delivery_dd', 'pi_use_time_slot', 'pi_dtt_auto_slot_created', 'pi_general_time_slot_delivery', 'pi_general_time_slot_pickup', 'pi_delivery_start_time', 'pi_delivery_end_time', 'pi_pickup_start_time', 'pi_pickup_end_time', 'pi_datetime', 'pi_pickup_address_1', 'pi_pickup_address_2', 'pi_dtt_do_activation_redirect', 'pi_dtt_co_label_date', 'pi_dtt_co_label_time', 'pi_show_delivery_type_label');

