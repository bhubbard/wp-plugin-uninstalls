#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acronym_acronyms'
wp option delete 'acronym_content'
wp option delete 'acronym_comments'
wp option delete 'acronym_html5'

