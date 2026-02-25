#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'si_do_activation_redirect'
wp option delete 'si_current_version'
wp option delete 'si_stripe_option'
wp option delete 'si_gtag_option'
wp option delete 'si_hash_migration_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%tally'"

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_si_messaging_for_%' OR option_name LIKE '_site_transient_si_messaging_for_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_shortcodes' OR option_name LIKE '_site_transient_%_shortcodes'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_access_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_access_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_access_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_access_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_estimate_access_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_estimate_access_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_estimate_access_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_estimate_access_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_est'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_est'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_est'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_est'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'time_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'time_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'time_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'time_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expense_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expense_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expense_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expense_invoice_id'"
