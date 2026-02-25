#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'bp_beta_tester_pre_release'

