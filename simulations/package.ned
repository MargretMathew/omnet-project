package startproject.simulations;

import inet.examples.inet.ipv4hook.MyHost;
import inet.examples.inet.ipv4hook.MyRouter;
import inet.networklayer.configurator.ipv4.Ipv4FlatNetworkConfigurator;
import inet.node.ethernet.Eth100M;
@license(LGPL);

network Network
{
    @display("bgb=394,286");
    submodules:
        Host: MyHost {
            @display("p=300,100");
        }
        Server: MyHost {
            @display("p=43,125");
        }
        Router: MyRouter {
            @display("p=173,125");
        }
        configurator: inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator {
            @display("p=314,20");
        }


    connections:

        Host.ethg++ <--> Eth100M <--> Router.ethg++;

        Router.ethg++ <--> Eth100M <--> Server.ethg++;

}

