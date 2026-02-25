#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_pmm_replace_meta_key'
wp option delete 'simple_pmm_replace_old_meta_value'
wp option delete 'simple_pmm_replace_new_meta_value'

