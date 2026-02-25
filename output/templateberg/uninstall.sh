#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__templateberg_do_redirect'
wp option delete '__gutentor_do_redirect'

# Delete Transients
wp transient delete 'templateberg_edt_free'
wp transient delete 'templateberg_edt_max'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_templateberg_edt_%' OR option_name LIKE '_site_transient_templateberg_edt_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_templateberg_tj_%' OR option_name LIKE '_site_transient_templateberg_tj_%'"
wp transient delete 'templateberg_gt_max'
wp transient delete 'templateberg_gt_total'
wp transient delete 'templateberg_tt_max'
wp transient delete 'templateberg_tt_total'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_max' OR option_name LIKE '_site_transient_%_max'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_total' OR option_name LIKE '_site_transient_%_total'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_templateberg_gt_%' OR option_name LIKE '_site_transient_templateberg_gt_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_templateberg_tt_%' OR option_name LIKE '_site_transient_templateberg_tt_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_templateberg_ct_p_%' OR option_name LIKE '_site_transient_templateberg_ct_p_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_templateberg_gt_p_%' OR option_name LIKE '_site_transient_templateberg_gt_p_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_templateberg_tt_p_%' OR option_name LIKE '_site_transient_templateberg_tt_p_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'templateberg-gutentor-imd-tmls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'templateberg-gutentor-imd-tmls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'templateberg-gutentor-imd-tmls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'templateberg-gutentor-imd-tmls'"
