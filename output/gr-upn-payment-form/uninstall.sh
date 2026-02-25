#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grupnpf_enable_debug_logging'
wp option delete 'grupnpf_ime_prejemnika'
wp option delete 'grupnpf_ulica_prejemnika'
wp option delete 'grupnpf_posta_prejemnika'
wp option delete 'grupnpf_kraj_prejemnika'
wp option delete 'grupnpf_iban_prejemnika'
wp option delete 'grupnpf_koda_namena'
wp option delete 'grupnpf_referenca_prejemnika'
wp option delete 'grupnpf_namen_placila'
wp option delete 'grupnpf_predpona_upn_slike'

# Delete Transients
wp transient delete 'grupnpf_admin_notice'

# Clear Cron Jobs
wp cron event delete 'grupnpf_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_grupnpf_upn_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_grupnpf_upn_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_grupnpf_upn_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_grupnpf_upn_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_grupnpf_upn_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_grupnpf_upn_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_grupnpf_upn_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_grupnpf_upn_path'"
