#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nq_admin'
wp option delete 'nq_excerpts'
wp option delete 'nq_quotes'
wp option delete 'nq_hello'
wp option delete 'nq_links'
wp option delete 'nq_cats'
wp option delete 'nq_pluggable'
wp option delete 'nq_tag'

