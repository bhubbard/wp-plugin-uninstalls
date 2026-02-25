#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sg_del_attachment'
wp option delete 'sg_enable_order_approval'
wp option delete 'sg_enable_order_edit'
wp option delete 'sg_attach_enable_order_approval'
wp option delete 'sg_attach_label'
wp option delete 'sg_attach_upload_label'
wp option delete 'woocommerce_email_footer_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_product_attach_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_product_attach_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_product_attach_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_product_attach_enable'"
