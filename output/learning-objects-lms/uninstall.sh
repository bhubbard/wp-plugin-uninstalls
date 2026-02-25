#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcloi_url_api'
wp option delete 'wcloi_consumer_key'
wp option delete 'wcloi_consumer_secret'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'wcloi_learningobjects_autenticate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcloi_prodotto_lo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcloi_prodotto_lo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcloi_prodotto_lo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcloi_prodotto_lo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcloi_prodotto_ecm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcloi_prodotto_ecm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcloi_prodotto_ecm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcloi_prodotto_ecm'"
