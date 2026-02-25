#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glossary_index_flush_rewrite_rules'
wp option delete 'glossary_index_redirect_on_activation'
wp option delete 'glossary_index_settings'

