#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiknowledgebase_api_key'
wp option delete 'aiknowledgebase_assistant_details'
wp option delete 'wmc_redirect'
wp option delete 'aiknowledgebase_customize_assistant'

