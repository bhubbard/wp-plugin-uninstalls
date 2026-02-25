#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'page_modified_api_key'
wp option delete 'page_modified_domain_id'

