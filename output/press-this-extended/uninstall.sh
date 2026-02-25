#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-media'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-blockquote'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-citation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-parent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-save-publish'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-save-draft'"
wp option delete 'press-this-extended-legacy'
wp option delete 'press-this-extended-media'
wp option delete 'press-this-extended-text'
wp option delete 'press-this-extended-citation'
wp option delete 'press-this-extended-editor'
wp option delete 'press-this-extended-blockquote'
wp option delete 'press-this-extended-parent'
wp option delete 'press-this-extended-save-publish'
wp option delete 'press-this-extended-save-draft'

