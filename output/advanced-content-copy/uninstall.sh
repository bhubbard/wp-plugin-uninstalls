#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advacoco_enabled'
wp option delete 'advacoco_snippet_length'
wp option delete 'advacoco_prefix_text'
wp option delete 'advacoco_suffix_text'
wp option delete 'advacoco_domain_text'
wp option delete 'advacoco_exclude_pages'
wp option delete 'advacoco_min_chars'

