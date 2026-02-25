#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tm_regex_options'
wp option delete 'tm_regex_opt_ptrns'
wp option delete 'tm_regex_opt_repls'

