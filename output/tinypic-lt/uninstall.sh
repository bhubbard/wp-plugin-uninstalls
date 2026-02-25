#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lt_page_default'
wp option delete 'lt_sh_search'
wp option delete 'lt_mt_opt'
wp option delete 'lt_lt_opt'
wp option delete 'tlt_opt_metabox'

