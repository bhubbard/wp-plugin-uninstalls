#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CP_CFTE_LOAD_SCRIPTS'
wp option delete 'cp_cfte_rep_enable'
wp option delete 'cp_cfte_rep_days'
wp option delete 'cp_cfte_rep_hour'
wp option delete 'cp_cfte_rep_emails'
wp option delete 'cp_cfte_fp_from_email'
wp option delete 'cp_cfte_rep_subject'
wp option delete 'cp_cfte_rep_emailformat'
wp option delete 'cp_cfte_rep_message'
wp option delete 'installed_contact-form-to-email'
wp option delete 'CP_CFTE_CSS'
wp option delete 'CP_CFTE_JS'
wp option delete 'CFTE_ONE_TIME_2UPDATE'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cp_cfte_last_sent_id_%'"
wp option delete 'cp_cfte_last_verified'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cp_cfte_last_sent%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_JS'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_CSS'"
wp option delete 'autoptimize_js_exclude'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_cftedk_banner_%' OR option_name LIKE '_site_transient_codepeople_cftedk_banner_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cpeople-captcha-%' OR option_name LIKE '_site_transient_cpeople-captcha-%'"

