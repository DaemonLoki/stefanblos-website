import SplashPublishPlugin

// This will generate your website using the custom theme:
try StefanBlosWebsite().publish(
    using: [
        .installPlugin(.splash(withClassPrefix: "")),
        .addMarkdownFiles(),
        .copyResources(),
        .generateHTML(withTheme: .myTheme),
        .generateSiteMap()
    ]
)
