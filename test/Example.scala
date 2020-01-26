import io.gatling.core.Predef._
import io.gatling.http.Predef._
import scala.concurrent.duration._

class Example extends Simulation {

  val httpProtocol = http.baseUrl("http://computer-database.gatling.io")

    val scn = scenario("Example")
      .exec(
        http("request_1")
          .get("/")
      )
      .pause(60)

    setUp(scn.inject(atOnceUsers(1)).protocols(httpProtocol))
}
