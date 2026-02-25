#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pi_dtt_allow_shop_manager'
wp option delete 'pi_type'
wp option delete 'pi_dtt_remove_billing_when_pickup-pro'
wp option delete 'pi_dtt_remove_billing_when_delivery-pro'
wp option delete 'pisol_dtt_pickup_dd'
wp option delete 'pisol_dtt_delivery_dd'
wp option delete 'pi_use_time_slot'
wp option delete 'pi_dtt_auto_slot_created'
wp option delete 'pi_general_time_slot_delivery'
wp option delete 'pi_general_time_slot_pickup'
wp option delete 'pi_delivery_start_time'
wp option delete 'pi_delivery_end_time'
wp option delete 'pi_pickup_start_time'
wp option delete 'pi_pickup_end_time'
wp option delete 'pi_datetime'
wp option delete 'pi_pickup_address_1'
wp option delete 'pi_pickup_address_2'
wp option delete 'pi_dtt_do_activation_redirect'
wp option delete 'pi_dtt_co_label_date'
wp option delete 'pi_dtt_co_label_time'
wp option delete 'pi_show_delivery_type_label'

