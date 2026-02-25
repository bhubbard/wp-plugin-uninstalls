#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'answerx_api_key'
wp option delete 'answerx_company_info'
wp option delete 'answerx_widget_show'
wp option delete 'answerx_company_id'
wp option delete 'answerx_installed'
wp option delete 'answerx_version'

