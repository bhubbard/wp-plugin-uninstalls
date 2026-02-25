#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'flush_rewrite_rules_needed'

