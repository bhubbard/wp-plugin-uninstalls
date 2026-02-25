#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cptslotsb_addons_active_list'
wp option delete 'CPAHB_PASSCODE'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp option delete 'cp_cpappb_statuses_block'
wp option delete 'CP_WPTSLOTSBK_CSS'
wp option delete 'cp_cptslotsb_rep_enable'
wp option delete 'cp_cptslotsb_rep_days'
wp option delete 'cp_cptslotsb_rep_hour'
wp option delete 'cp_cptslotsb_rep_emails'
wp option delete 'cp_cptslotsb_fp_from_email'
wp option delete 'cp_cptslotsb_rep_subject'
wp option delete 'cp_cptslotsb_rep_emailformat'
wp option delete 'cp_cptslotsb_rep_message'
wp option delete 'cp_tslotsb_LOAD_SCRIPTS'
wp option delete 'CP_WPTS_CSV_SEPARATOR'
wp option delete 'cp_wpts_schcsvexclude'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cp_cptslotsb_last_sent_id_%'"
wp option delete 'cp_cptslotsb_last_verified'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cp_cptslotsb_last_sent%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_JS'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_CSS'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cpeople-captcha-%' OR option_name LIKE '_site_transient_cpeople-captcha-%'"
wp transient delete 'codepeople_wpts_warning_css'

