#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fqaas_enable_faq_alias'
wp option delete 'fqaas_enable_schema'
wp option delete 'fqaas_theme_styles'
wp option delete 'fqaas_custom_css'

