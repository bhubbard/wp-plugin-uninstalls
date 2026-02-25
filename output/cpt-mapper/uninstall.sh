#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srcpt_cpt'
wp option delete 'srcpt_tax'
wp option delete 'srcpt_meta'
wp option delete 'srcpt_opt_meta'
wp option delete 'metaid'
wp option delete 'type'

