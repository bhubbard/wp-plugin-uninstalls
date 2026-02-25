#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsub_recaptcha_keys'
wp option delete 'wpsub_emails_setting'
wp option delete 'wpsub_payments_setting'
wp option delete 'wpsub_woocommerce_product_id'
wp option delete 'wpsub_enable_woocommerce'
wp option delete 'wpsub_default_post_status'
wp option delete 'wpsub_paid_success_message'
wp option delete 'wpsub_free_success_message'
wp option delete 'wpsub_content_min_words'
wp option delete 'wpsub_content_max_words'
wp option delete 'wpsub_error_message'
wp option delete 'wpsub_redirect_url'
wp option delete 'wpsub_richtext_editor'
wp option delete 'wpsub_unique_title'
wp option delete 'wpsub_category_selection_mode'
wp option delete 'wpsub_show_tags'
wp option delete 'wpsub_show_featured_image'

