#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_tdata_headername'
wp option delete 'bp_tdata_tablename'
wp option delete 'bp_tdata_columnexclude'

