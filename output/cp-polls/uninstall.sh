#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CP_POLLS_LOAD_SCRIPTS'
wp option delete 'CP_POLLS_rep_enable'
wp option delete 'CP_POLLS_rep_days'
wp option delete 'CP_POLLS_rep_hour'
wp option delete 'CP_POLLS_rep_emails'
wp option delete 'CP_POLLS_fp_from_email'
wp option delete 'CP_POLLS_rep_subject'
wp option delete 'CP_POLLS_rep_emailformat'
wp option delete 'CP_POLLS_rep_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp option delete 'CP_POLLS_CSS'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'CP_POLLS_last_sent_id_%'"
wp option delete 'CP_POLLS_last_verified'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'CP_POLLS_last_sent%'"
wp option delete 'autoptimize_js_exclude'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_CSS'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

