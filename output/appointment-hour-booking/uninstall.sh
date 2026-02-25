#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpappb_addons_active_list'
wp option delete 'cpappb_dashboard_maxitems'
wp option delete 'cpappb_dashboard_columns'
wp option delete 'cpappb_dashboard_columnlabels'
wp option delete 'cpappb_dashboard_compactview'
wp option delete 'CPAHB_PASSCODE'
wp option delete 'cp_cpappb_statuses_block'
wp option delete 'CP_APPB_LOAD_SCRIPTS'
wp option delete 'cp_cpappb_schcalcontent_otherparams'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp option delete 'cp_cpappb_admin_language'
wp option delete 'cp_cpappb_schcalcontent_admin'
wp option delete 'cp_cpappb_schcaltitle_admin'
wp option delete 'cp_cpappb_schcalcontent_public'
wp option delete 'cp_cpappb_schcaltitle_public'
wp option delete 'cp_cpappb_sch_admin_blockedt'
wp option delete 'cp_cpappb_schcalcontent_exclude'
wp option delete 'CP_AHB_CSS'
wp option delete 'CP_AHB_JS'
wp option delete 'cp_cpappb_honeypot'
wp option delete 'cp_cpappb_storeip'
wp option delete 'cp_cpappb_rep_enable'
wp option delete 'cp_cpappb_rep_days'
wp option delete 'cp_cpappb_rep_hour'
wp option delete 'cp_cpappb_rep_emails'
wp option delete 'cp_cpappb_fp_from_email'
wp option delete 'cp_cpappb_rep_subject'
wp option delete 'cp_cpappb_rep_emailformat'
wp option delete 'cp_cpappb_rep_message'
wp option delete 'cp_cpappb_bocsvexclude'
wp option delete 'cp_cpappb_schcsvexclude'
wp option delete 'CP_APPB_CSV_CHARFIX'
wp option delete 'CP_APPB_CSV_SEPARATOR'
wp option delete 'AHB_ONE_TIME_3UPDATE'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cp_cpappb_last_sent_id_%'"
wp option delete 'cp_cpappb_last_verified'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cp_cpappb_last_sent%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_CSS'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_JS'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ahb-captcha-%' OR option_name LIKE '_site_transient_ahb-captcha-%'"

