#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'faq_custom_text'
wp option delete 'count'
wp option delete 'icon_style'
wp option delete 'load_place'
wp option delete 'faq_acc_custom_css'
wp option delete 'is_mhshohel_faq_activated'

