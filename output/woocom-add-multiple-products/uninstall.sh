#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocom_amp_user_check'
wp option delete 'woocom_amp_user_role'
wp option delete 'woocom_amp_product_cat'
wp option delete 'woocom_amp_do_activation_redirect'

