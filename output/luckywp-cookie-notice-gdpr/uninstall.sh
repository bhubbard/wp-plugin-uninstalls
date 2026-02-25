#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lwpcng_general'
wp option delete 'lwpcng_appearance'
wp option delete 'lwpcng_scripts'
wp option delete 'lwpcng_advanced'
wp option delete 'lwpcng_rate_time'

