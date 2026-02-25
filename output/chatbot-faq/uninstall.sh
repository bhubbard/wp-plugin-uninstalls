#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chatbot_faq_data'
wp option delete 'chatbot_faq_design_data'
wp option delete 'chatbot_faq_options'

