#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'taxoclean_current_taxo'
wp option delete 'taxoclean_max_per_page'
wp option delete 'taxoclean_orphan_level'
wp option delete 'taxoclean_lookalike_level'
wp option delete 'taxoclean_license'
wp option delete 'taxoclean_fast_mode'
wp option delete 'taxoclean_counter'

