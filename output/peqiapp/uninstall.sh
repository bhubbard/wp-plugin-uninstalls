#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'peqi_token'
wp option delete 'peqi_domain_key'
wp option delete 'peqi_domain_fqdn'
wp option delete 'peqi_domain_id'
wp option delete 'peqi_user_name'
wp option delete 'peqi_user_email'
wp option delete 'peqi_checkpoint'

# Delete Transients
wp transient delete 'peqi_error_login_mail'
wp transient delete 'peqi_error_login_password'
wp transient delete 'peqi_error_login'
wp transient delete 'peqi_error_register_mail'
wp transient delete 'peqi_error_register_name'
wp transient delete 'peqi_error_register_phone'
wp transient delete 'peqi_error_register_password'
wp transient delete 'peqi_success_register'
wp transient delete 'peqi_error_register'
wp transient delete 'peqi_success_clear_cache'
wp transient delete 'peqi_error_clear_cache'
wp transient delete 'peqi_error_check_website'
wp transient delete 'peqi_validation_results'
wp transient delete 'peqi_success_change_level'
wp transient delete 'peqi_error_change_level'
wp transient delete 'peqi_payment_url'
wp transient delete 'peqi_error_activate_plan'
wp transient delete 'peqi_error_create_domain'
wp transient delete 'peqi_error_pointed_domain'
wp transient delete 'peqi_payment_id'

# Clear Cron Jobs
wp cron event delete 'schedule_task'

