#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sectionize_id_prefix'
wp option delete 'sectionize_start_section'
wp option delete 'sectionize_end_section'
wp option delete 'sectionize_include_toc_threshold'
wp option delete 'sectionize_before_toc'
wp option delete 'sectionize_after_toc'
wp option delete 'sectionize_disabled'

