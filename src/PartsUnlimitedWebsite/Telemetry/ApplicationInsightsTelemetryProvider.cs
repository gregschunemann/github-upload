using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.ApplicationInsights;
using Microsoft.ApplicationInsights.Extensibility;
using Microsoft.ApplicationInsights.Channel;

namespace PartsUnlimited.Telemetry

{
    public class ApplicationInsightsTelemetryProvider : ITelemetryProvider
    {
        private readonly TelemetryClient _telemetry;

        public ApplicationInsightsTelemetryProvider()
        {
            _telemetry = new TelemetryClient();
            /*for developer mode only - enable for testing*/
            var aiOptions = new Microsoft.ApplicationInsights.AspNetCore.Extensions.ApplicationInsightsServiceOptions();
            aiOptions.DeveloperMode = true;
            
        }

        public void TrackTrace(string message)
        {
            _telemetry.TrackTrace(message);
        }

        public void TrackEvent(string message)
        {
            _telemetry.TrackEvent(message);
        }

        public void TrackEvent(string message, Dictionary<string, string> properties, Dictionary<string, double> measurements)
        {
            _telemetry.TrackEvent(message, properties, measurements);
        }

        public void TrackException(Exception exception)
        {
            _telemetry.TrackException(exception);
        }
    }
    public class VersionedTelemetryInitializer : ITelemetryInitializer
    {
        public void Initialize(ITelemetry telemetry)
        {
            // you could possibly pull this from the assembly version
            telemetry.Context.Properties["Version"] = "1.0.0.1";
        }
    }

}
