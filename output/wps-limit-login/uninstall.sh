#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_limit_login_allow_local_options'
wp option delete 'wps_limit_login_use_local_options'
wp option delete 'site_name'
wp option delete 'wps_limit_login_activated'
wp option delete 'wpslimitlogin_admin_footer_text_rated'
wp option delete 'wps_limit_lockout_notify'
wp option delete 'wps_limit_login_show_credit_link'
wp option delete 'wps_limit_login_allowed_retries'
wp option delete 'wps_limit_login_lockout_duration'
wp option delete 'wps_limit_login_valid_duration'
wp option delete 'wps_limit_login_allowed_lockouts'
wp option delete 'wps_limit_login_long_duration'
wp option delete 'wps_limit_login_notify_email_after'
wp option delete 'wps_limit_login_whitelist'
wp option delete 'wps_limit_login_blacklist'
wp option delete 'wps_limit_login_retries'
wp option delete 'wps_limit_login_retries_valid'
wp option delete 'wps_limit_login_logged'
wp option delete 'wps_limit_lockouts_total'
wp option delete 'wps_limit_login_lockouts'

# Delete Transients
wp transient delete 'wps_plugins_adds'

