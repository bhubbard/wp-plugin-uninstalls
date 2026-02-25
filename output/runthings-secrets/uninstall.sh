#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'runthings_secrets_db_version'
wp option delete 'runthings_secrets_add_page'
wp option delete 'runthings_secrets_created_page'
wp option delete 'runthings_secrets_view_page'
wp option delete 'runthings_secrets_default_expiration'
wp option delete 'runthings_secrets_default_max_views'
wp option delete 'runthings_secrets_enqueue_form_styles'
wp option delete 'runthings_secrets_recaptcha_enabled'
wp option delete 'runthings_secrets_recaptcha_public_key'
wp option delete 'runthings_secrets_recaptcha_private_key'
wp option delete 'runthings_secrets_recaptcha_score'
wp option delete 'runthings_secrets_rate_limit_enabled'
wp option delete 'runthings_secrets_rate_limit_tries_add'
wp option delete 'runthings_secrets_rate_limit_tries_created'
wp option delete 'runthings_secrets_rate_limit_tries_view'
wp option delete 'runthings_secrets_rate_limit_tries_delete'
wp option delete 'runthings_secrets_rate_limit_exemption_enabled'
wp option delete 'runthings_secrets_rate_limit_exemption_roles'
wp option delete 'runthings_secrets_stats_total_secrets'
wp option delete 'runthings_secrets_stats_total_views'
wp option delete 'runthings_secrets_first_run_completed'
wp option delete 'runthings_secrets_encryption_key'

