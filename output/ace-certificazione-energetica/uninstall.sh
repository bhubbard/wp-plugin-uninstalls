#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CertificazioneEnergetica_opts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CertificazioneEnergetica_ad_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CertificazioneEnergetica_ad_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CertificazioneEnergetica_ad_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CertificazioneEnergetica_ad_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CertificazioneEnergetica_option_txt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CertificazioneEnergetica_option_txt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CertificazioneEnergetica_option_txt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CertificazioneEnergetica_option_txt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ace_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ace_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ace_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ace_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipe_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipe_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipe_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipe_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unita_ipe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unita_ipe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unita_ipe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unita_ipe'"
