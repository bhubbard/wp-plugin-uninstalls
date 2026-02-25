#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twinfield_customer_slug'
wp option delete 'twinfield_invoice_slug'
wp option delete 'wp_twinfield_default_invoice_type'
wp option delete 'twinfield_username'
wp option delete 'twinfield_password'
wp option delete 'twinfield_organisation'
wp option delete 'twinfield_default_office_code'
wp option delete 'twinfield_default_invoice_type'
wp option delete 'twinfield_default_vat_code'
wp option delete 'twinfield_default_article_code'
wp option delete 'twinfield_default_subarticle_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twinfield_article_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twinfield_article_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twinfield_article_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twinfield_article_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twinfield_subarticle_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twinfield_subarticle_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twinfield_subarticle_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twinfield_subarticle_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twinfield_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twinfield_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twinfield_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twinfield_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twinfield_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twinfield_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twinfield_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twinfield_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twinfield_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twinfield_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twinfield_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twinfield_invoice_number'"
