#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smsdojo_enable_order_creation_trigger'
wp option delete 'smsdojo_enable_order_update_trigger'
wp option delete 'smsdojo_enable_order_cancellation_trigger'
wp option delete 'smsdojo_sim_id'
wp option delete 'smsdojo_api_key'
wp option delete 'smsdojo_sms_template_order_creation'
wp option delete 'smsdojo_sms_template_order_update'
wp option delete 'smsdojo_sms_template_order_cancellation'

