#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'andwff_migration_done'
wp option delete 'andwff_options'
wp option delete 'andw_fixed_footer_options'

