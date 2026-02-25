#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shipit_do_activation_redirect'
wp option delete 'shipit_user'
wp option delete 'shipit_token'
wp option delete 'shipit_account_country'
wp option delete 'shipit_plugin_redirect'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_shipit_settings'
wp option delete 'shipit_seccond_setting'
wp option delete 'shipit_db_tables_verify '
wp option delete 'shipit_auth'
wp option delete 'shipit_db_tables_verify'
wp option delete 'shipit_communes_loaded'
wp option delete 'shipit_webhook'
wp option delete 'wc_fields_billing'
wp option delete 'wooccm_billing'
wp option delete 'shipit_migration'
wp option delete 'shipit_webhook_integration'

# Clear Cron Jobs
wp cron event delete 'isa_add_every_fifteen_minutes'
wp cron event delete 'wp_every_one_hour_cron_action'

