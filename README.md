# littlelink-generator

This template project automates generating a [littlelink](https://github.com/sethcottle/littlelink) site for cloudflare pages with the option to enable its redirect feature to create short or professional links.

## How to generate a links page?

create a repo from this template and make it your own.

Update the asset icon and favicon or delete them and just update the links.json's ICON_URL items with a url to a public accessible image.

update the links.json to add your links in the correct format.

the meta and bio items should be set accordingly, make it you.

brand names are not always going to be normal, so checkout the [brands.css](https://github.com/sethcottle/littlelink/blob/main/css/brands.css) to get the exact name for the button css for example, facebook -> button.button-**faceb**.

the code will validate if you set the value correctly and if its not correct; it will default to the web brand css instead.

the name of the button though are typically normal with some alts, checkout the list of [icons](https://github.com/sethcottle/littlelink/tree/main/images/icons).

## Cloudflare Pages

Go to cloudflare's [dash](https://dash.cloudflare.com) and then click on "Workers & Pages"

click the button that says "Create an application" and then change it to pages, as we are not creating a worker.

connect to git and sign into your github account and let it have access to your links repo, this repo can be private if you want and you only have to give it access to just this one repo and not all of them.

give the Project name a decent name like githubUser-links
this will be the format of the generic .pages.dev url, this can be ignored if you add a custom domain(s) to this page project.

set the **build command** to "npm run build" and the **Build output directory** to "build" (note dont prepend the /, its assumed its there)

Press save and deploy.

the initial build can take a min or so to build but all future builds will be much faster after you enable the experimenal option to cache the builds.


## Cloudflare _redirect option

To have the _redirect file generated, enable the key "ENABLE_REDIRECTS" in the links.json and make sure each link redirect array has a valid json object arrays

```json
[
{
            "brand": "github",
            "icon": "github",
            "name": "GitHub",
            "link": "/github",
            "redirects":
            [
                {
                    "src": "/github",
                    "dest": "https://github.com/xstar97",
                    "code": 308
                }
            ]
        }
]
```

if this is not something you need or want to use at all, it can be  disabled and set to null and the link key should be set to a valid url like so.

```json
"ENABLE_REDIRECTS": false
```

```json
[
{
            "brand": "github",
            "icon": "github",
            "name": "GitHub",
            "link": "https://github.com/xstar97",
            "redirects": null
        }
]
```

