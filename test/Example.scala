import io.gatling.core.Predef._
import io.gatling.http.Predef._
import scala.concurrent.duration._

class Example extends Simulation {

  val httpProtocol = http.baseUrl("http://computer-database.gatling.io")

    val scn = scenario("Example") // A scenario is a chain of requests and pauses
      .exec(
        http("request_1")
          .get("/")
      )

    setUp(scn.inject(atOnceUsers(1)).protocols(httpProtocol))
}
