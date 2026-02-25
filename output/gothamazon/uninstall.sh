#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gothamazon_option_aturner'
wp option delete 'gothamazon_ama_kapsule_apijeton'
wp option delete 'gothamazon_ama_login'
wp option delete 'gothamazon_option_powered'
wp option delete 'gothamazon_version'
wp option delete 'gothamazon_option_marketplace'
wp option delete 'gothamazon_ama_key'
wp option delete 'gothamazon_ama_track'
wp option delete 'gothamazon_option_amaprime'
wp option delete 'gothamazon_option_cachingtime'
wp option delete 'gothamazon_option_neufunik'
wp option delete 'gothamazon_option_sortbay'
wp option delete 'gothamazon_option_vendeur'
wp option delete 'gothamazon_option_cloaking'
wp option delete 'gothamazon_option_cloakingimage'
wp option delete 'gothamazon_option_css'
wp option delete 'gothamazon_option_legal'
wp option delete 'gothamazon_option_economycostapi'
wp option delete 'gothamazon_option_speedboutique'
wp option delete 'gtz_tokyo4'
wp option delete 'gtz_tokyo4_3bay'
wp option delete 'gtz_linquery_default'
wp option delete 'gtz_awin_ref_id'
wp option delete 'gothamazon_option_prixbarre'
wp option delete 'gothamazon_option_rating'
wp option delete 'gothamazon_option_boodisplayprice'
wp option delete 'gothamazon_option_hidetitre'
wp option delete 'gothamazon_option_color_cta'
wp option delete 'gothamazon_option_color_price_bg'
wp option delete 'gothamazon_option_marchandlogo'
wp option delete 'gothamazon_ama_track2'
wp option delete 'gothamazon_option_urlgta'
wp option delete 'gothamazon_option_css_rowshop'
wp option delete 'gothamazon_option_css_rowcatspeed'
wp option delete 'gothamazon_option_css_yourstyle'

# Clear Cron Jobs
wp cron event delete 'gtz_suppression_mensuelle_fichiers'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gotham_dynamic_store_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gotham_dynamic_store_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gotham_dynamic_store_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gotham_dynamic_store_widget'"
