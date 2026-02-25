#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'improvedexternalproducts_sections'
wp option delete 'woocommerce-improved-external-products'
wp option delete 'iepp_do_activation_redirect'
wp option delete 'wpo_iepp_pro_notice_dismissed'
wp option delete 'iepp_go_pro_notice'
wp option delete 'wpo_iepp_pro_notice_shown'

