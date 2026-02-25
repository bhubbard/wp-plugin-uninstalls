#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frontpagereloadcounter_visit_count'
wp option delete 'frontpagereloadcounter_last_visit'
wp option delete 'frontpagereloadcounter_paused'
wp option delete 'frontpagereloadcounter_db_version'

