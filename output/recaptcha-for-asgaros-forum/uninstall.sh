#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rfaf_recaptcha_version'
wp option delete 'rfaf_recaptcha_site_key'
wp option delete 'rfaf_recaptcha_server_key'
wp option delete 'rfaf_recaptcha_language'
wp option delete 'rfaf_recaptcha_v3_site_key'
wp option delete 'rfaf_recaptcha_v3_server_key'
wp option delete 'rfaf_recaptcha_v3_score'
wp option delete 'rfaf_recaptcha_registerd_user'

