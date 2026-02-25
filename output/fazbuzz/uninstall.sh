#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fazbuzz_valid_key'
wp option delete 'fazbuzz_post_category'
wp option delete 'FAZBUZZ_VERSION'
wp option delete 'fazbuzz_key'

