#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zeno_font_resizer'
wp option delete 'zeno_font_resizer_ownelement'
wp option delete 'zeno_font_resizer_resizeMax'
wp option delete 'zeno_font_resizer_resizeMin'
wp option delete 'zeno_font_resizer_resizeSteps'
wp option delete 'zeno_font_resizer_letter'
wp option delete 'zeno_font_resizer_cookieTime'
wp option delete 'zeno_font_resizer_ownid'

