import * as Sentry from "@sentry/vue";
import Vue from 'vue';


export default function ({app}, inject) {
  Sentry.init({
    Vue,
    dsn: "https://cdf89e7156034172a513e112d3ac10f7@o447951.ingest.us.sentry.io/4505029409374208",
    debug: true,

    // Adds request headers and IP for users, for more info visit:
    // https://docs.sentry.io/platforms/javascript/guides/vue/configuration/options/#sendDefaultPii
    sendDefaultPii: true,

    integrations: [
      Sentry.browserTracingIntegration({ router: app.router }),
      Sentry.vueIntegration({ tracingOptions: { trackComponents: true } }),
    ],

    // Set tracesSampleRate to 1.0 to capture 100%
    // of transactions for tracing.
    // We recommend adjusting this value in production
    // Learn more at
    // https://docs.sentry.io/platforms/javascript/configuration/options/#traces-sample-rate
    tracesSampleRate: 1.0,

    // Set `tracePropagationTargets` to control for which URLs trace propagation should be enabled
    tracePropagationTargets: ["localhost"],
  });

  inject('sentry', Sentry);
  Sentry.captureMessage("teasdasd")
}
